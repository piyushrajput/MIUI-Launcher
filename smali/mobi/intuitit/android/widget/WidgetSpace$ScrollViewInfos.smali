.class Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;
.super Ljava/lang/Object;
.source "WidgetSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollViewInfos"
.end annotation


# instance fields
.field key:Ljava/lang/CharSequence;

.field lv:Landroid/widget/AbsListView;

.field lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

.field obs:Landroid/database/ContentObserver;

.field obsHandler:Landroid/os/Handler;

.field final synthetic this$0:Lmobi/intuitit/android/widget/WidgetSpace;

.field widgetId:I


# direct methods
.method constructor <init>(Lmobi/intuitit/android/widget/WidgetSpace;)V
    .locals 1
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->this$0:Lmobi/intuitit/android/widget/WidgetSpace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->lv:Landroid/widget/AbsListView;

    .line 335
    const/4 v0, -0x1

    iput v0, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewInfos;->widgetId:I

    return-void
.end method
