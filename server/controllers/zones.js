import validationResponse from '@validations/validationResponse';
import validZone from '@validations/zone';
import models from '@models';

const { Zone } = models;

/**
 * Zone Controller
 * @async
 * @class ZoneController
 */
class ZoneController {
  /**
   * @static
   * @param {*} req - Request object
   * @param {*} res - Response object
   * @param {*} next - The next middleware
   * @return {json} Returns json object
   * @memberof ZoneController
   */
  static async create(req, res) {
    try {
      const { errors, isValid } = validZone(req.body);
      // Check Validation
      if (!isValid) {
        return res.status(400).json({
          status: 400,
          errors
        });
      }

      const { id: userId } = req.decoded;

      const payload = await Zone.create({ userId, ...req.body });

      res.status(201).json({
        status: 201,
        message: 'Zone created successfully',
        payload
      });
    } catch (err) {
      if (err.errors && err.errors[0].type === 'unique violation') {
        return res.status(400).json({
          status: 400,
          errors: validationResponse(err)
        });
      }

      res.status(400).json({
        status: 400,
        errors: 'Zone creation unsuccessful'
      });
    }
  }

  /**
   * Get all zones
   * @static
   * @param {*} req - Request object
   * @param {*} res - Response object
   * @return {json} Returns json object
   * @memberof ZoneController
   */
  static async getAll(req, res) {
    const payload = await Zone.findAll();

    return res.status(200).json({
      status: 200,
      message: 'Zones retrieved successfully',
      payload
    });
  }

  /**
   * Update a zone
   * @static
   * @param {*} req - Request object
   * @param {*} res - Response object
   * @param {*} next - The next middleware
   * @return {json} Returns json object
   * @memberof ZoneController
   */
  static async update(req, res) {
    try {
      const { errors, isValid } = validZone(req.body);
      // Check Validation
      if (!isValid) {
        return res.status(400).json({
          status: 400,
          errors
        });
      }

      const { zone } = req;
      const { userId, id } = zone;

      await Zone.update(req.body, { returning: true, where: { id, userId } });

      const payload = await Zone.findAll();
      res.status(200).json({
        status: 200,
        message: 'Zone updated successfully',
        payload
      });
    } catch (err) {
      return res.status(400).json({
        status: 400,
        errors: 'Zone could not be updated'
      });
    }
  }

  /**
   * Delete a zone
   * @static
   * @param {*} req - Request object
   * @param {*} res - Response object
   * @param {*} next - The next middleware
   * @return {json} Returns json object
   * @memberof ZoneController
   */
  static async delete(req, res) {
    try {
      const { zone } = req;
      const { id, userId } = zone;
      await Zone.destroy({ where: { id, userId } });
      const payload = await Zone.findAll();

      res.status(200).json({
        status: 200,
        message: 'Zone deleted successfully',
        payload
      });
    } catch (err) {
      return res.status(400).json({
        status: 400,
        errors: 'Zone could not be deleted'
      });
    }
  }
}

export default ZoneController;
