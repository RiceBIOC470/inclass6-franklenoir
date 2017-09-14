function students = class_structure(names,ages,grades)
    classroom = struct('Name',names,'Age',ages,'Pass',grades);
    students = classroom;
end