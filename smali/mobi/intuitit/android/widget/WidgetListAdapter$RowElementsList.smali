.class Lmobi/intuitit/android/widget/WidgetListAdapter$RowElementsList;
.super Ljava/lang/Object;
.source "WidgetListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RowElementsList"
.end annotation


# instance fields
.field singleRowElementsList:[Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;

.field final synthetic this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;


# direct methods
.method public constructor <init>(Lmobi/intuitit/android/widget/WidgetListAdapter;I)V
    .locals 1
    .parameter
    .parameter "size"

    .prologue
    .line 63
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElementsList;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array v0, p2, [Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$RowElementsList;->singleRowElementsList:[Lmobi/intuitit/android/widget/WidgetListAdapter$RowElement;

    .line 65
    return-void
.end method
