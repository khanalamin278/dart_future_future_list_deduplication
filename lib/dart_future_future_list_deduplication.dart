/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_future_future_list_deduplication_base.dart';

/*
Practice Question 2: Future List Deduplication
Task:
Write a function deduplicateFutureList that takes a list of 
Future<int> which may contain duplicates. The function 
should return a Future<List<int>> with duplicates removed, 
preserving the order of first occurrence.
*/

Future<List<int>> deduplicateFutureList(List<Future<int>> futures) async {
  List<int> ans = []; // খালি একটা লিস্ট তৈরি করা হয়েছে
  Set<int> unique =
      Set<int>(); // deduplicate মান যাতে না থাকে এর জন্য সেট ব্যবহার করা হয়।

  for (var indev in futures) {
    // ইনপুট লিস্ট এর ভেতর লুপ চালানো হয়েছে
    var value =
        await indev; // প্রতিটি মানকে নতুন একটি ভেরিএবল এর সাথে যোগ করা হয়েছে
    if (unique.add(value)) {
      // unique হলে িএকটি সেট। আমরা জানি সেটের মধ্যে শুধু মাত্র একটি মান থাকে এর জন্য ভেরিএবলের মান যদি deduplicate থাকে তাহলে সেগুলো বাদ দিয়ে দেবে
      ans.add(
          value); // এখন খালি লিস্ট এর ভেতর unique এর মান গুলো স্টোর করা হয়েছে
    }
  }

  return ans; // সর্ব শেষ ans কে রিটান্ড করা হয়েছে
}
