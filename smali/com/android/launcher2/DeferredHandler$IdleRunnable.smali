.class Lcom/android/launcher2/DeferredHandler$IdleRunnable;
.super Ljava/lang/Object;
.source "DeferredHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunnable"
.end annotation


# instance fields
.field mRunnable:Ljava/lang/Runnable;


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher2/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 68
    return-void
.end method
