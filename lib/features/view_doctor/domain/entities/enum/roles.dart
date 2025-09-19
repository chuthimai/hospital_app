enum Roles {
  physician,
  lead
}

extension RolesVi on Roles {
  String toVietnamese() {
    switch (this) {
      case Roles.physician:
        return "Bác sỹ chuyên khoa";
      case Roles.lead:
        return "Trưởng khoa";
    }
  }
}