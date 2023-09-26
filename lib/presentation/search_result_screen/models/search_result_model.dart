import '../../../core/app_export.dart';
import 'search_result_item_model.dart';

/// This class defines the variables used in the [search_result_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultModel {
  Rx<List<SearchResultItemModel>> searchResultItemList =
      Rx(List.generate(6, (index) => SearchResultItemModel()));
}
