﻿namespace Parbat.Core.BaseRepository
{
    public interface IRepositoryFactory
    {
        ICourseRepository CourseRepository { get; }

        ICourseTypeRepository CourseTypeRepository { get; }
      
        IComponentRepository ComponentRepository { get; }
    }
}
