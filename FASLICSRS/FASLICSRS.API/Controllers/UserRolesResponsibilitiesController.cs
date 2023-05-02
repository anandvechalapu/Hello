using System.Threading.Tasks;
using FASLICSRS.DTO;
using FASLICSRS.Service;
using Microsoft.AspNetCore.Mvc;

namespace FASLICSRS.API
{
    [Route("api/v1/[controller]")]
    [ApiController]
    public class UserRolesResponsibilitiesController : ControllerBase
    {
        private readonly UserRolesResponsibilitiesService _userRolesResponsibilitiesService;

        public UserRolesResponsibilitiesController(UserRolesResponsibilitiesService userRolesResponsibilitiesService)
        {
            _userRolesResponsibilitiesService = userRolesResponsibilitiesService;
        }

        [HttpGet]
        [Route("{id}")]
        public async Task<ActionResult<UserRolesResponsibilitiesModel>> GetUserRolesResponsibilitiesAsync(int id)
        {
            var userRoleResponsibilityModel = await _userRolesResponsibilitiesService.GetUserRolesResponsibilitiesAsync(id);

            if (userRoleResponsibilityModel == null)
            {
                return NotFound();
            }
            else
            {
                return Ok(userRoleResponsibilityModel);
            }
        }

        [HttpPost]
        public async Task<ActionResult<int>> CreateUserRolesResponsibilitiesAsync(UserRolesResponsibilitiesModel userRoleResponsibilityModel)
        {
            var id = await _userRolesResponsibilitiesService.CreateUserRolesResponsibilitiesAsync(userRoleResponsibilityModel);
            return Ok(id);
        }

        [HttpPut]
        public async Task<ActionResult<bool>> UpdateUserRolesResponsibilitiesAsync(UserRolesResponsibilitiesModel userRoleResponsibilityModel)
        {
            var isUpdated = await _userRolesResponsibilitiesService.UpdateUserRolesResponsibilitiesAsync(userRoleResponsibilityModel);
            return Ok(isUpdated);
        }

        [HttpDelete]
        [Route("{id}")]
        public async Task<ActionResult<bool>> DeleteUserRolesResponsibilitiesAsync(int id)
        {
            var isDeleted = await _userRolesResponsibilitiesService.DeleteUserRolesResponsibilitiesAsync(id);
            return Ok(isDeleted);
        }
    }
}