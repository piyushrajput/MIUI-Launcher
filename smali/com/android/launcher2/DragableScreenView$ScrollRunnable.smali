.class public Lcom/android/launcher2/DragableScreenView$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragableScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DragableScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/android/launcher2/DragableScreenView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragableScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/launcher2/DragableScreenView$ScrollRunnable;->this$0:Lcom/android/launcher2/DragableScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/android/launcher2/DragableScreenView$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/launcher2/DragableScreenView$ScrollRunnable;->this$0:Lcom/android/launcher2/DragableScreenView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragableScreenView;->scrollDragingLeft()V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/DragableScreenView$ScrollRunnable;->this$0:Lcom/android/launcher2/DragableScreenView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher2/DragableScreenView;->mDragScrollState:I

    .line 115
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragableScreenView$ScrollRunnable;->this$0:Lcom/android/launcher2/DragableScreenView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragableScreenView;->scrollDragingRight()V

    goto :goto_0
.end method

.method public setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/launcher2/DragableScreenView$ScrollRunnable;->mDirection:I

    .line 119
    return-void
.end method
