class Company {
  int id;
  String name;

  Company(this.id, this.name);

  static List<Company> getCompanies() {
    return <Company>[
      Company(1, 'bittergourd'),
      Company(2, 'Pepper'),

    ];
  }
}