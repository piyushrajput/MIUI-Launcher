.class Lcom/android/launcher2/DragController$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/android/launcher2/DragController;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    invoke-static {v0}, Lcom/android/launcher2/DragController;->access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    iget v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    invoke-static {v0}, Lcom/android/launcher2/DragController;->access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/DragScroller;->scrollDragingLeft()V

    .line 707
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/DragController;->access$102(Lcom/android/launcher2/DragController;I)I

    .line 709
    :cond_0
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    invoke-static {v0}, Lcom/android/launcher2/DragController;->access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/DragScroller;->scrollDragingRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 712
    iput p1, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->mDirection:I

    .line 713
    return-void
.end method
