.class public Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WidgetListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public lvClickItemTag:Ljava/lang/Object;

.field public views:[Landroid/view/View;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;->lvClickItemTag:Ljava/lang/Object;

    .line 441
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ViewHolder;->views:[Landroid/view/View;

    .line 442
    return-void
.end method
