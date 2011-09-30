.class Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$8;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->bindWorkspace()V
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
    .line 1197
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$8;->this$2:Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1200
    const-string v0, "Launcher.Model"

    const-string v1, "Going to start binding widgets soon."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    return-void
.end method
