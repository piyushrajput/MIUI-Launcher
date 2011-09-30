.class Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1443
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$900(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/WorkspaceThumbnailView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/WorkspaceThumbnailView;->getCurrentScreen()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ThumbnailScreen;

    invoke-virtual {v4}, Lcom/android/launcher2/ThumbnailScreen;->isMovingAnimationStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1459
    :goto_0
    return-void

    .line 1446
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1447
    .local v1, screenId:J
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$1000(Lcom/android/launcher2/Workspace;)Landroid/util/LongSparseArray;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1448
    .local v3, screenPosition:I
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$1100(Lcom/android/launcher2/Workspace;)[I

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1449
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$1100(Lcom/android/launcher2/Workspace;)[I

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 1450
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$1100(Lcom/android/launcher2/Workspace;)[I

    move-result-object v4

    aget v4, v4, v0

    if-ne v3, v4, :cond_2

    .line 1451
    move v3, v0

    .line 1456
    .end local v0           #i:I
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v1, v2}, Lcom/android/launcher2/Workspace;->deleteScreen(J)V

    .line 1457
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->notifyDataSetChanged()V

    .line 1458
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$900(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/WorkspaceThumbnailView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher2/WorkspaceThumbnailView;->startDeletedAnimation(I)V

    goto :goto_0

    .line 1449
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
