import '../entities/transfer_letter.dart';

abstract class TransferLetterRepository {
  Future<List<TransferLetter>> getAllTransferLetters();
  Future<void> deleteAllTransferLetters();
}