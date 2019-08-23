import validMembership from '@validations/membership';
import validAttendance from '@validations/attendance';
import models from '@models';

const { Membership, Attendance } = models;

/**
 * Report Controller
 * @async
 * @class ReportController
 */
class ReportController {
  /**
  * @static
  * @param {*} req - Request object
  * @param {*} res - Response object
  * @param {*} next - The next middleware
  * @return {json} Returns json object
  * @memberof ReportController
  */
  static async membership(req, res) {
    try {
      const { errors, isValid } = await validMembership(req.body);
      // Check Validation
      if (!isValid) {
        return res.status(400).json({
          status: 400,
          errors
        });
      }

      const { id: userId } = req.decoded;

      const payload = await Membership.create({ userId, ...req.body });

      res.status(200).json({
        status: 200, message: 'Membership report submitted successfully', payload
      });
    } catch (err) {
      return res.status(400).json({
        status: 400,
        errors: 'Membership report submission failed'
      });
    }
  }

  /**
  * @static
  * @param {*} req - Request object
  * @param {*} res - Response object
  * @param {*} next - The next middleware
  * @return {json} Returns json object
  * @memberof ReportController
  */
  static async attendance(req, res) {
    try {
      const { errors, isValid } = await validAttendance(req.body);
      // Check Validation
      if (!isValid) {
        return res.status(400).json({
          status: 400,
          errors
        });
      }

      const { id: userId } = req.decoded;

      const payload = await Attendance.create({ userId, ...req.body });

      res.status(200).json({
        status: 200, message: 'Attendance submitted successfully', payload
      });
    } catch (err) {
      return res.status(400).json({
        status: 400,
        errors: 'Attendance submission failed',
        err
      });
    }
  }
}

export default ReportController;
