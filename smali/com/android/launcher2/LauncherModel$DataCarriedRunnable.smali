.class abstract Lcom/android/launcher2/LauncherModel$DataCarriedRunnable;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DataCarriedRunnable"
.end annotation


# instance fields
.field protected mData:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "data"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$DataCarriedRunnable;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$DataCarriedRunnable;->mData:Ljava/lang/Object;

    .line 598
    return-void
.end method
