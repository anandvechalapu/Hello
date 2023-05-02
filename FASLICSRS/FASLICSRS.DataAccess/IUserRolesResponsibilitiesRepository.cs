using System;
using System.Threading.Tasks;
using FASLICSRS.DTO;

namespace FASLICSRS.Service
{
    public interface IUserRolesResponsibilitiesRepository
    {
        Task<UserRolesResponsibilitiesModel> GetUserRolesResponsibilitiesAsync(int id);
        Task<int> CreateUserRolesResponsibilitiesAsync(UserRolesResponsibilitiesModel userRoleResponsibilityModel);
        Task<bool> UpdateUserRolesResponsibilitiesAsync(UserRolesResponsibilitiesModel userRoleResponsibilityModel);
        Task<bool> DeleteUserRolesResponsibilitiesAsync(int id);
    }
}