import 'package:OOSE/Router/Router.dart';
import '../Repositories/StudentRepository.dart';

class StudentenController implements IController, IGetRequest{

  @override
  String path() {
    return "Student/all";
  }

  @override
  Future<Object> GET(Map<String, dynamic> args) async {
    return await new StudentRepository().GetAllStudents();
  }

}