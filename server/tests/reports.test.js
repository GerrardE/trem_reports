import chai from 'chai';
import chaiHttp from 'chai-http';
import index from '../index';
import { createTestUser, generateToken } from './factory/user-factory';
import createTestZone from './factory/zone-factory';
import createTestBranch from './factory/branch-factory';
import createTestFellowship from './factory/fellowship-factory';
import createTestEvent from './factory/event-factory';
import createTestPreacher from './factory/preacher-factory';

chai.use(chaiHttp);
const { expect } = chai;

let userToken, testUser, userid, testZone, testBranch, testPreacher, testEvent, testFellowship;

describe('REPORT TESTS', () => {
  before(async () => {
    testUser = await createTestUser({});
    userToken = await generateToken({ id: testUser.id });
    userid = testUser.id;
    testZone = await createTestZone({ userid });
    const zoneid = testZone.id;
    testBranch = await createTestBranch({ userid, zoneid });
    const branchid = testBranch.id;
    testEvent = await createTestEvent({ userid, branchid });
    testPreacher = await createTestPreacher({ userid, branchid });
    testFellowship = await createTestFellowship({ userid, branchid });
  });
  it('should return success on SUBMIT A MEMBERSHIP REPORT', (done) => {
    try {
      chai.request(index)
        .post('/api/v1/reports/membership')
        .set({ Authorization: userToken })
        .send({
          adults: '10',
          children: '2',
          tithers: '12',
          newmembers: '11',
          notes: 'good report',
          branchid: testBranch.id.toString()
        })
        .end((err, res) => {
          expect(res.status).to.equal(200);
          expect(res.body).to.be.an('object');
          expect(res.body).to.have.property('payload');
          expect(res.body.message).to.eql('Membership report submitted successfully');
          done();
        });
    } catch (err) {
      throw err.message;
    }
  });
  it('should return VALIDATION ERROR on SUBMIT A MEMBERSHIP REPORT', (done) => {
    try {
      chai.request(index)
        .post('/api/v1/reports/membership')
        .set({ Authorization: userToken })
        .send({
          adults: '10',
          children: '2',
          tithers: '12',
          newmembers: '11',
          notes: '',
          branchid: testBranch.id.toString()
        })
        .end((err, res) => {
          expect(res.status).to.equal(400);
          expect(res.body).to.be.an('object');
          expect(res.body).to.have.property('errors');
          expect(res.body.errors.notes).to.eql('notes field is required');
          done();
        });
    } catch (err) {
      throw err.message;
    }
  });

  it('should return success on SUBMIT AN ATTENDANCE', (done) => {
    try {
      chai.request(index)
        .post('/api/v1/reports/attendance')
        .set({ Authorization: userToken })
        .send({
          children: '12',
          women: '12',
          men: '11',
          eventid: testEvent.id.toString(),
          preacherid: testPreacher.id.toString(),
          notes: 'A very good note',
          branchid: testBranch.id.toString()
        })
        .end((err, res) => {
          expect(res.status).to.equal(200);
          expect(res.body).to.be.an('object');
          expect(res.body).to.have.property('payload');
          expect(res.body.message).to.eql('Attendance submitted successfully');
          done();
        });
    } catch (err) {
      throw err.message;
    }
  });
  it('should return VALIDATION ERROR on SUBMIT AN ATTENDANCE', (done) => {
    try {
      chai.request(index)
        .post('/api/v1/reports/attendance')
        .set({ Authorization: userToken })
        .send({
          children: '12',
          women: '12',
          men: '11',
          eventid: testEvent.id.toString(),
          preacherid: testPreacher.id.toString(),
          notes: '',
          branchid: testBranch.id.toString()
        })
        .end((err, res) => {
          expect(res.status).to.equal(400);
          expect(res.body).to.be.an('object');
          expect(res.body).to.have.property('errors');
          expect(res.body.errors.notes).to.eql('notes field is required');
          done();
        });
    } catch (err) {
      throw err.message;
    }
  });

  it('should return success on SUBMIT A TRAINING REPORT', (done) => {
    try {
      chai.request(index)
        .post('/api/v1/reports/training')
        .set({ Authorization: userToken })
        .send({
          trainees: '23',
          converts: '1',
          notes: 'Good training report',
          branchid: testBranch.id.toString()
        })
        .end((err, res) => {
          expect(res.status).to.equal(200);
          expect(res.body).to.be.an('object');
          expect(res.body).to.have.property('payload');
          expect(res.body.message).to.eql('Training report submitted successfully');
          done();
        });
    } catch (err) {
      throw err.message;
    }
  });
  it('should return VALIDATION ERROR on SUBMIT A TRAINING REPORT', (done) => {
    try {
      chai.request(index)
        .post('/api/v1/reports/training')
        .set({ Authorization: userToken })
        .send({
          trainees: '23',
          converts: '1',
          notes: '',
          branchid: testBranch.id.toString()
        })
        .end((err, res) => {
          expect(res.status).to.equal(400);
          expect(res.body).to.be.an('object');
          expect(res.body).to.have.property('errors');
          expect(res.body.errors.notes).to.eql('notes field is required');
          done();
        });
    } catch (err) {
      throw err.message;
    }
  });

  it('should return success on SUBMIT AN ACTIVITY REPORT', (done) => {
    try {
      chai.request(index)
        .post('/api/v1/reports/activity')
        .set({ Authorization: userToken })
        .send({
          council: '2',
          special: '4',
          project: '2',
          notes: 'God report',
          branchid: testBranch.id.toString()
        })
        .end((err, res) => {
          expect(res.status).to.equal(200);
          expect(res.body).to.be.an('object');
          expect(res.body).to.have.property('payload');
          expect(res.body.message).to.eql('Activity report submitted successfully');
          done();
        });
    } catch (err) {
      throw err.message;
    }
  });
  it('should return VALIDATION ERROR on SUBMIT AN ACTIVITY REPORT', (done) => {
    try {
      chai.request(index)
        .post('/api/v1/reports/activity')
        .set({ Authorization: userToken })
        .send({
          council: '2',
          special: '4',
          project: '2',
          notes: '',
          branchid: testBranch.id.toString()
        })
        .end((err, res) => {
          expect(res.status).to.equal(400);
          expect(res.body).to.be.an('object');
          expect(res.body).to.have.property('errors');
          expect(res.body.errors.notes).to.eql('notes field is required');
          done();
        });
    } catch (err) {
      throw err.message;
    }
  });

  it('should return success on SUBMIT A GROUP REPORT', (done) => {
    try {
      chai.request(index)
        .post('/api/v1/reports/group')
        .set({ Authorization: userToken })
        .send({
          cmf: '13',
          cwf: '1',
          cyf: '12',
          rcf: '7',
          branchid: testBranch.id.toString(),
          notes: 'Nice group report'
        })
        .end((err, res) => {
          expect(res.status).to.equal(200);
          expect(res.body).to.be.an('object');
          expect(res.body).to.have.property('payload');
          expect(res.body.message).to.eql('Group report submitted successfully');
          done();
        });
    } catch (err) {
      throw err.message;
    }
  });
  it('should return VALIDATION ERROR on SUBMIT A GROUP REPORT', (done) => {
    try {
      chai.request(index)
        .post('/api/v1/reports/group')
        .set({ Authorization: userToken })
        .send({
          cmf: '13',
          cwf: '1',
          cyf: '12',
          rcf: '7',
          branchid: testBranch.id.toString(),
          notes: ''
        })
        .end((err, res) => {
          expect(res.status).to.equal(400);
          expect(res.body).to.be.an('object');
          expect(res.body).to.have.property('errors');
          expect(res.body.errors.notes).to.eql('notes field is required');
          done();
        });
    } catch (err) {
      throw err.message;
    }
  });

  it('should return success on SUBMIT A FELLOWSHIP REPORT', (done) => {
    try {
      chai.request(index)
        .post('/api/v1/reports/freport')
        .set({ Authorization: userToken })
        .send({
          newcells: '1',
          totalcells: '11',
          attendance: '2',
          fellowshipid: testFellowship.id.toString(),
          notes: 'Good job on the report'
        })
        .end((err, res) => {
          expect(res.status).to.equal(200);
          expect(res.body).to.be.an('object');
          expect(res.body).to.have.property('payload');
          expect(res.body.message).to.eql('Fellowship report submitted successfully');
          done();
        });
    } catch (err) {
      throw err.message;
    }
  });
  it('should return VALIDATION ERROR on SUBMIT A FELLOWSHIP REPORT', (done) => {
    try {
      chai.request(index)
        .post('/api/v1/reports/freport')
        .set({ Authorization: userToken })
        .send({
          newcells: '1',
          totalcells: '11',
          attendance: '2',
          fellowshipid: testFellowship.id.toString(),
          notes: ''
        })
        .end((err, res) => {
          expect(res.status).to.equal(400);
          expect(res.body).to.be.an('object');
          expect(res.body).to.have.property('errors');
          expect(res.body.errors.notes).to.eql('notes field is required');
          done();
        });
    } catch (err) {
      throw err.message;
    }
  });
});
