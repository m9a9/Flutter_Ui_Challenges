class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[200]!),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(8),
            hintText: title,
            hintStyle: const TextStyle(color: Colors.grey),
            border: InputBorder.none),
      ),
    );
  }
}
