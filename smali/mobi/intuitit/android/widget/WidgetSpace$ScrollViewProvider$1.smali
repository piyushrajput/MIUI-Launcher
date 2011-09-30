.class Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$1;
.super Ljava/lang/Object;
.source "WidgetSpace.java"

# interfaces
.implements Lmobi/intuitit/android/widget/WidgetDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;->makeScrollable(Landroid/content/Context;Landroid/content/Intent;Landroid/appwidget/AppWidgetHostView;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;

.field final synthetic val$lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;


# direct methods
.method constructor <init>(Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;Lmobi/intuitit/android/widget/ScrollableBaseAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$1;->this$1:Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider;

    iput-object p2, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$1;->val$lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetSpace$ScrollViewProvider$1;->val$lvAdapter:Lmobi/intuitit/android/widget/ScrollableBaseAdapter;

    invoke-virtual {v0}, Lmobi/intuitit/android/widget/ScrollableBaseAdapter;->notifyToRegenerate()V

    .line 565
    return-void
.end method
