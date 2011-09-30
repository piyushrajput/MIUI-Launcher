.class Lcom/android/launcher2/Launcher$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->bindAppsAdded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$apps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1932
    iput-object p1, p0, Lcom/android/launcher2/Launcher$3;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$3;->val$apps:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1935
    iget-object v2, p0, Lcom/android/launcher2/Launcher$3;->val$apps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 1936
    .local v0, i:Lcom/android/launcher2/ShortcutInfo;
    iget-object v2, p0, Lcom/android/launcher2/Launcher$3;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher2/Launcher;->addItem(Lcom/android/launcher2/ItemInfo;Z)V

    goto :goto_0

    .line 1938
    .end local v0           #i:Lcom/android/launcher2/ShortcutInfo;
    :cond_0
    return-void
.end method
