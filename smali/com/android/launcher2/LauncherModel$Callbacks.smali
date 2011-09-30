.class public interface abstract Lcom/android/launcher2/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract bindAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V
.end method

.method public abstract bindAppsAdded(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsRemoved(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindFolders(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindGadget(Lcom/android/launcher2/gadget/GadgetInfo;)V
.end method

.method public abstract bindItems(Ljava/util/ArrayList;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract finishBindingItems()V
.end method

.method public abstract getCurrentWorkspaceScreen()I
.end method

.method public abstract reloadWidgetPreview()V
.end method

.method public abstract startBinding()V
.end method
