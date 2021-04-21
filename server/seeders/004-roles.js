module.exports = {
  up: (queryInterface) => queryInterface.bulkInsert("Roles", [
    {
      name: "super:admin",
      notes: "super admin role",
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      name: "admin",
      notes: "admin role",
      createdAt: new Date(),
      updatedAt: new Date()
    },
    {
      name: "guest",
      notes: "guest role",
      createdAt: new Date(),
      updatedAt: new Date()
    }
  ], {}),

  down: (queryInterface) => queryInterface.bulkDelete("Roles", null, {})
};
