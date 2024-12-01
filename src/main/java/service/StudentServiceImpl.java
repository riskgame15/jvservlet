package service;

import model.Student;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StudentServiceImpl implements StudentService {
    private static Map<Integer, Student> students;
    static {
        students = new HashMap<>();
        students.put(1, new Student(1, "Thang", 99));
        students.put(2, new Student(2, "James", 98));
        students.put(3, new Student(3, "Bob", 99));
        students.put(4, new Student(4, "Mary", 99));
        students.put(5, new Student(5, "John", 99));
        students.put(6, new Student(6, "Jack", 99));
    }

    @Override
    public List<Student> findAll() {
        return new ArrayList<>(students.values());
    }

    @Override
    public void add(Student student) {
        students.put(student.getId(), student);
    }

    @Override
    public Student findById(int id) {
        return students.get(id);
    }

    @Override
    public void update(int id, Student student) {
        students.put(id, student);
    }

    @Override
    public void remove(int id) {
        students.remove(id);
    }
}
