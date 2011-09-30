.class Lcom/android/launcher2/gadget/ClockGadgetDelegate$MountedChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClockGadgetDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/ClockGadgetDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MountedChangedReceiver"
.end annotation


# instance fields
.field private final mGadgetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/gadget/ClockGadgetDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher2/gadget/ClockGadgetDelegate;)V
    .locals 1
    .parameter "gadget"

    .prologue
    .line 337
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 338
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate$MountedChangedReceiver;->mGadgetRef:Ljava/lang/ref/WeakReference;

    .line 339
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 343
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/launcher2/gadget/ClockGadgetDelegate$MountedChangedReceiver;->mGadgetRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;

    .line 345
    .local v0, gadget:Lcom/android/launcher2/gadget/ClockGadgetDelegate;
    if-eqz v0, :cond_0

    .line 346
    iget-object v1, v0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    if-nez v1, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->updateActualGadget()V

    .line 348
    iget-object v1, v0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mActualGadget:Lcom/android/launcher2/gadget/Gadget;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mStatus:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, v0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;->mClock:Lcom/android/launcher2/gadget/Clock;

    invoke-virtual {v1}, Lcom/android/launcher2/gadget/Clock;->resume()V

    .line 355
    .end local v0           #gadget:Lcom/android/launcher2/gadget/ClockGadgetDelegate;
    :cond_0
    return-void
.end method
