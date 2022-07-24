using BookmyMovie.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BookmyMovie.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SearchController : ControllerBase
    {
        private readonly mymovieDBContext _context;
        public SearchController(mymovieDBContext moviesDbConnect)
        {
            _context = moviesDbConnect;
        }



        [HttpPost("{Movie}")]
        public AddMovie Search(int id)
        {
            AddMovie obj = _context.AddMovies.Find(id);
            return obj;
        }
    }
}
