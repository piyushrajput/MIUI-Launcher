.class Lcom/android/launcher2/Workspace$3;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->showPreview(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/android/launcher2/Workspace$3;->this$0:Lcom/android/launcher2/Workspace;

    iput-boolean p2, p0, Lcom/android/launcher2/Workspace$3;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/launcher2/Workspace$3;->this$0:Lcom/android/launcher2/Workspace;

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace$3;->val$show:Z

    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;Z)V

    .line 1170
    return-void
.end method
