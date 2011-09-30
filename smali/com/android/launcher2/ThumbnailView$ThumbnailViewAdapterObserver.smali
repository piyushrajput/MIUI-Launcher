.class Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "ThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailViewAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ThumbnailView;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/ThumbnailView;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;->this$0:Lcom/android/launcher2/ThumbnailView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/ThumbnailView;Lcom/android/launcher2/ThumbnailView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;-><init>(Lcom/android/launcher2/ThumbnailView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;->this$0:Lcom/android/launcher2/ThumbnailView;

    invoke-virtual {v0}, Lcom/android/launcher2/ThumbnailView;->refreshThumbnails()V

    .line 570
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;->this$0:Lcom/android/launcher2/ThumbnailView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/ThumbnailView;->access$102(Lcom/android/launcher2/ThumbnailView;Z)Z

    .line 571
    iget-object v0, p0, Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;->this$0:Lcom/android/launcher2/ThumbnailView;

    invoke-virtual {v0}, Lcom/android/launcher2/ThumbnailView;->requestLayout()V

    .line 572
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/launcher2/ThumbnailView$ThumbnailViewAdapterObserver;->onChanged()V

    .line 577
    return-void
.end method
