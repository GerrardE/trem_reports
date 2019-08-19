import chai from 'chai';
import chaiHttp from 'chai-http';
import sinon from 'sinon';
import zones from '@controllers/zones';
import { zoneFinder, zonePermission } from '@middlewares/zoneFinder';

chai.use(chaiHttp);

describe('ZONE CONTROLLER TESTS', () => {
  let sandbox = null;
  beforeEach(() => {
    sandbox = sinon.createSandbox();
  });
  afterEach(() => {
    sandbox.restore();
  });

  it('should handle error on CREATE ZONE', async () => {
    const mock = sinon.spy();
    const res = {
      status: () => ({
        json: mock
      })
    };

    await zones.create({}, res);
    sinon.assert.calledOnce(mock);
  });

  it('should handle error on UPDATE ZONE', async () => {
    const mock = sinon.spy();
    const res = {
      status: () => ({
        json: mock
      })
    };

    await zones.update({}, res);
    sinon.assert.calledOnce(mock);
  });

  it('should handle error on DELETE ZONE', async () => {
    const mock = sinon.spy();
    const res = {
      status: () => ({
        json: mock
      })
    };

    await zones.delete({}, res);
    sinon.assert.calledOnce(mock);
  });

  it('should handle error on FIND ZONE', async () => {
    const next = sinon.spy();
    const mock = sinon.spy();
    const req = {
      params: {
        id: 5
      }
    };

    const res = {
      status: () => ({
        json: mock
      })
    };

    await zoneFinder(req, res, next);
    sinon.assert.calledOnce(mock);
  });

  it('should handle error on ZONE PERMISSION', async () => {
    const next = sinon.spy();
    const mock = sinon.spy();
    const req = {
      params: {
        id: 1
      },
      decoded: {
        id: 1
      }
    };

    const res = {
      status: () => ({
        json: mock
      })
    };

    await zonePermission(req, res, next);
    sinon.assert.calledOnce(mock);
  });
});
