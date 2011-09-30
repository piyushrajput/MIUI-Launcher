.class Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;
.super Ljava/lang/Object;
.source "OnLongClickAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/OnLongClickAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/OnLongClickAgent;

.field private zOriginalVersionTag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/launcher2/OnLongClickAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/android/launcher2/OnLongClickAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberVersionTag()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/android/launcher2/OnLongClickAgent;

    invoke-static {v0}, Lcom/android/launcher2/OnLongClickAgent;->access$200(Lcom/android/launcher2/OnLongClickAgent;)Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;->getVersionTag()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;->zOriginalVersionTag:Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/android/launcher2/OnLongClickAgent;

    invoke-static {v0}, Lcom/android/launcher2/OnLongClickAgent;->access$000(Lcom/android/launcher2/OnLongClickAgent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/android/launcher2/OnLongClickAgent;

    invoke-static {v0}, Lcom/android/launcher2/OnLongClickAgent;->access$100(Lcom/android/launcher2/OnLongClickAgent;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/android/launcher2/OnLongClickAgent;

    invoke-static {v0}, Lcom/android/launcher2/OnLongClickAgent;->access$100(Lcom/android/launcher2/OnLongClickAgent;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;->zOriginalVersionTag:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/android/launcher2/OnLongClickAgent;

    invoke-static {v1}, Lcom/android/launcher2/OnLongClickAgent;->access$200(Lcom/android/launcher2/OnLongClickAgent;)Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/OnLongClickAgent$VersionTagGenerator;->getVersionTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/android/launcher2/OnLongClickAgent;

    invoke-static {v0}, Lcom/android/launcher2/OnLongClickAgent;->access$300(Lcom/android/launcher2/OnLongClickAgent;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/android/launcher2/OnLongClickAgent;

    invoke-static {v0}, Lcom/android/launcher2/OnLongClickAgent;->access$300(Lcom/android/launcher2/OnLongClickAgent;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/android/launcher2/OnLongClickAgent;

    invoke-static {v1}, Lcom/android/launcher2/OnLongClickAgent;->access$100(Lcom/android/launcher2/OnLongClickAgent;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/android/launcher2/OnLongClickAgent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/OnLongClickAgent;->access$402(Lcom/android/launcher2/OnLongClickAgent;Z)Z

    .line 131
    iget-object v0, p0, Lcom/android/launcher2/OnLongClickAgent$CheckForLongPress;->this$0:Lcom/android/launcher2/OnLongClickAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/OnLongClickAgent;->access$002(Lcom/android/launcher2/OnLongClickAgent;Z)Z

    .line 133
    :cond_1
    return-void
.end method
