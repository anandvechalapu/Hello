using System;
using System.Threading.Tasks;
using FASLICSRS.DTO;

namespace FASLICSRS
{
    public class UserRolesResponsibilitiesRepository : IUserRolesResponsibilitiesRepository
    {
        public async Task<UserRolesResponsibilitiesModel> GetUserRolesResponsibilitiesAsync(int id)
        {
            return await Task.Run(() =>
            {
                UserRolesResponsibilitiesModel userRoleResponsibilityModel = new UserRolesResponsibilitiesModel
                {
                    Id = id,
                    Role = "Admin",
                    Responsibility = "Manage user roles and responsibilities"
                };
                return userRoleResponsibilityModel;
            });
        }

        public async Task<int> CreateUserRolesResponsibilitiesAsync(UserRolesResponsibilitiesModel userRoleResponsibilityModel)
        {
            return await Task.Run(() =>
            {
                int id = userRoleResponsibilityModel.Id;
                return id;
            });
        }

        public async Task<bool> UpdateUserRolesResponsibilitiesAsync(UserRolesResponsibilitiesModel userRoleResponsibilityModel)
        {
            return await Task.Run(() =>
            {
                bool isUpdated = true;
                return isUpdated;
            });
        }

        public async Task<bool> DeleteUserRolesResponsibilitiesAsync(int id)
        {
            return await Task.Run(() =>
            {
                bool isDeleted = true;
                return isDeleted;
            });
        }
    }
}