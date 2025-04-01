import 'package:flutter/material.dart';


class NoteCard extends StatelessWidget{
  final String? noteTitle;
  final String? noteBody;
  final function;

  NoteCard({
    this.noteTitle,
    this.noteBody,
    this.function,
});

  @override
  Widget build(BuildContext contex){
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(13),
      child: Container(
        padding: EdgeInsets.all(13),
        width: 700,
        height: 169,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.blue.withOpacity(0.1),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              noteTitle!, 
              style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),),
            
            SizedBox(height: 10,),
            
            Text(
              noteBody!,
              maxLines: 4,
              style: TextStyle(
                fontSize: 12,
              ),
            ),

            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 0,),

                ElevatedButton(
                  child: Text('View'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(120, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: function,
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}