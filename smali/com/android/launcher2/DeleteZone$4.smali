.class Lcom/android/launcher2/DeleteZone$4;
.super Ljava/lang/Object;
.source "DeleteZone.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeleteZone;->startUninstallWidgetDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeleteZone;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeleteZone;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/launcher2/DeleteZone$4;->this$0:Lcom/android/launcher2/DeleteZone;

    iput-object p2, p0, Lcom/android/launcher2/DeleteZone$4;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone$4;->this$0:Lcom/android/launcher2/DeleteZone;

    invoke-static {v0}, Lcom/android/launcher2/DeleteZone;->access$200(Lcom/android/launcher2/DeleteZone;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DeleteZone$4;->val$packageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 229
    return-void
.end method
