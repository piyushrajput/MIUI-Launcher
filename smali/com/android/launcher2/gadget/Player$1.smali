.class Lcom/android/launcher2/gadget/Player$1;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/gadget/Player;


# direct methods
.method constructor <init>(Lcom/android/launcher2/gadget/Player;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$1;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$1;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/Player;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$1;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$200(Lcom/android/launcher2/gadget/Player;)V

    .line 200
    :cond_0
    return-void
.end method
