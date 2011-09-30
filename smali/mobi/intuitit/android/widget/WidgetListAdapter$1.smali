.class Lmobi/intuitit/android/widget/WidgetListAdapter$1;
.super Ljava/lang/Object;
.source "WidgetListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;


# direct methods
.method constructor <init>(Lmobi/intuitit/android/widget/WidgetListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$1;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v1, "LauncherPP_WLA"

    .line 118
    const-string v0, "LauncherPP_WLA"

    const-string v0, "mGenerateDataCacheRunnable start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$1;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    invoke-static {v0}, Lmobi/intuitit/android/widget/WidgetListAdapter;->access$000(Lmobi/intuitit/android/widget/WidgetListAdapter;)V

    .line 121
    const-string v0, "LauncherPP_WLA"

    const-string v0, "mGenerateDataCacheRunnable end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method
