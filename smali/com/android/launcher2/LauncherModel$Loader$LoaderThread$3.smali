.class Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->doLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)V
    .locals 0
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$3;->this$2:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 865
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 866
    return-void
.end method
