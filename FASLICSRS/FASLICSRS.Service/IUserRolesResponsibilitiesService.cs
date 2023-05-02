using System;
using System.Threading.Tasks;
using FASLICSRS.DataAccess;
using FASLICSRS.DTO;

namespace FASLICSRS.Service
{
    public interface IUserRolesResponsibilitiesService
    {
        Task<UserRolesResponsibilitiesModel> GetUserRolesResponsibilitiesAsync(int id);
        Task<int> CreateUserRolesResponsibilitiesAsync(UserRolesResponsibilitiesModel userRoleResponsibilityModel);
        Task<bool> UpdateUserRolesResponsibilitiesAsync(UserRolesResponsibilitiesModel userRoleResponsibilityModel);
        Task<bool> DeleteUserRolesResponsibilitiesAsync(int id);
    }
}