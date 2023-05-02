using System;
using System.Threading.Tasks;
using FASLICSRS.DataAccess;
using FASLICSRS.DTO;

namespace FASLICSRS.Service
{
    public class UserRolesResponsibilitiesService : IUserRolesResponsibilitiesService
    {
        private readonly IUserRolesResponsibilitiesRepository _userRolesResponsibilitiesRepository;

        public UserRolesResponsibilitiesService(IUserRolesResponsibilitiesRepository userRolesResponsibilitiesRepository)
        {
            _userRolesResponsibilitiesRepository = userRolesResponsibilitiesRepository;
        }

        public async Task<UserRolesResponsibilitiesModel> GetUserRolesResponsibilitiesAsync(int id)
        {
            return await _userRolesResponsibilitiesRepository.GetUserRolesResponsibilitiesAsync(id);
        }

        public async Task<int> CreateUserRolesResponsibilitiesAsync(UserRolesResponsibilitiesModel userRoleResponsibilityModel)
        {
            return await _userRolesResponsibilitiesRepository.CreateUserRolesResponsibilitiesAsync(userRoleResponsibilityModel);
        }

        public async Task<bool> UpdateUserRolesResponsibilitiesAsync(UserRolesResponsibilitiesModel userRoleResponsibilityModel)
        {
            return await _userRolesResponsibilitiesRepository.UpdateUserRolesResponsibilitiesAsync(userRoleResponsibilityModel);
        }

        public async Task<bool> DeleteUserRolesResponsibilitiesAsync(int id)
        {
            return await _userRolesResponsibilitiesRepository.DeleteUserRolesResponsibilitiesAsync(id);
        }
    }

    public interface IUserRolesResponsibilitiesService
    {
        Task<UserRolesResponsibilitiesModel> GetUserRolesResponsibilitiesAsync(int id);
        Task<int> CreateUserRolesResponsibilitiesAsync(UserRolesResponsibilitiesModel userRoleResponsibilityModel);
        Task<bool> UpdateUserRolesResponsibilitiesAsync(UserRolesResponsibilitiesModel userRoleResponsibilityModel);
        Task<bool> DeleteUserRolesResponsibilitiesAsync(int id);
    }
}