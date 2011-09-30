.class Lcom/android/launcher2/Workspace$4;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/android/launcher2/Workspace$4;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1200
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Workspace$4;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1201
    iget-object v2, p0, Lcom/android/launcher2/Workspace$4;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getCellScreen(I)Lcom/android/launcher2/CellScreen;

    move-result-object v0

    .line 1202
    .local v0, cell:Lcom/android/launcher2/CellScreen;
    if-eqz v0, :cond_0

    .line 1203
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellScreen;->setDrawingCacheEnabled(Z)V

    .line 1204
    invoke-virtual {v0}, Lcom/android/launcher2/CellScreen;->getCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayout;->setDrawingCacheEnabled(Z)V

    .line 1200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1207
    .end local v0           #cell:Lcom/android/launcher2/CellScreen;
    :cond_1
    return-void
.end method
