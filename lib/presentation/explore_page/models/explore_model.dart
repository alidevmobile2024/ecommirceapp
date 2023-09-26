import '../../../core/app_export.dart';
import 'explore_item_model.dart';

/// This class defines the variables used in the [explore_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreModel {
  Rx<List<ExploreItemModel>> exploreItemList =
      Rx(List.generate(6, (index) => ExploreItemModel()));
}
