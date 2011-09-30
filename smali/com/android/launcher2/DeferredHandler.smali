.class public Lcom/android/launcher2/DeferredHandler;
.super Ljava/lang/Object;
.source "DeferredHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DeferredHandler$1;,
        Lcom/android/launcher2/DeferredHandler$IdleRunnable;,
        Lcom/android/launcher2/DeferredHandler$Impl;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/launcher2/DeferredHandler$Impl;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 35
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    .line 36
    new-instance v0, Lcom/android/launcher2/DeferredHandler$Impl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/DeferredHandler$Impl;-><init>(Lcom/android/launcher2/DeferredHandler;Lcom/android/launcher2/DeferredHandler$1;)V

    iput-object v0, p0, Lcom/android/launcher2/DeferredHandler;->mHandler:Lcom/android/launcher2/DeferredHandler$Impl;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/DeferredHandler;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 98
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "runnable"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher2/DeferredHandler;->scheduleNextLocked()V

    .line 81
    :cond_0
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method scheduleNextLocked()V
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 104
    .local v0, peek:Ljava/lang/Runnable;
    instance-of v1, v0, Lcom/android/launcher2/DeferredHandler$IdleRunnable;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v2, p0, Lcom/android/launcher2/DeferredHandler;->mHandler:Lcom/android/launcher2/DeferredHandler$Impl;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 110
    .end local v0           #peek:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local v0       #peek:Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler;->mHandler:Lcom/android/launcher2/DeferredHandler$Impl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler$Impl;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
