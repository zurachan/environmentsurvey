﻿using EnvironmentSurvey.WebAPI.ClientSide.Models;
using EnvironmentSurvey.WebAPI.DataAccess;
using EnvironmentSurvey.WebAPI.DataAccess.Domains;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;

namespace EnvironmentSurvey.WebAPI.BusinessLogic
{
    
    public interface ISeminarService
    {
        public Task<List<SeminarModel>> GetAll();
        public Task<SeminarModel> GetByID(int id);
    }
    public class SeminarService : ISeminarService
    {
        private readonly ESContext _context;
        private IConfiguration _configuration;

        public SeminarService(ESContext context, IConfiguration configuration)
        {
            _context = context;
            _configuration = configuration;
        }
        public async Task<List<SeminarModel>> GetAll()
        {
            var listSeminar = await _context.Seminars.ToListAsync();
            var seminarModel = listSeminar.Select(x => new SeminarModel
            {
                ID = x.Id,
                Name = x.Name,
                Description = x.Description,
                Image = x.Image,
                Location = x.Location,
                Author = x.Author,
                Subject = x.Subject,
                forUser = x.forUser,
                StartDate = x.StartDate.ToString("yyyy-MM-dd"),
                EndDate = x.EndTime.ToString("yyyy-MM-dd")
            });
            return seminarModel.ToList();
        }

        public async Task<SeminarModel> GetByID(int id)
        {
            Seminar seminar = await _context.Seminars.FindAsync(id);
            if(seminar == null)
            {
                throw new Exception("Seminar not found");
            }
            else
            {
                /*DateTime dt = DateTime.ParseExact(seminar.StartDate.ToString(), "MM/dd/yyyy hh:mm:ss tt", CultureInfo.InvariantCulture);
                string startDate = dt.ToString("dd/M/yyyy", CultureInfo.InvariantCulture);*/

                string startDate = seminar.StartDate.ToString("yyyy-MM-dd");
                string endDate = seminar.EndTime.ToString("yyyy-MM-dd");
                var seminarModel = new SeminarModel
                {
                    ID = seminar.Id,
                    Name = seminar.Name,
                    Description = seminar.Description,
                    Image = seminar.Image,
                    Location = seminar.Location,
                    Author = seminar.Author,
                    Subject = seminar.Subject,
                    forUser = seminar.forUser,
                    StartDate = startDate,
                    EndDate = endDate
                };
                return seminarModel;
            }
        }
    }
}