.class Lcom/android/launcher2/Launcher$CreateShortcut;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateShortcut"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/launcher2/AddAdapter;

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1628
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$CreateShortcut;-><init>(Lcom/android/launcher2/Launcher;)V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 1661
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1665
    :goto_0
    return-void

    .line 1662
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 1635
    new-instance v2, Lcom/android/launcher2/AddAdapter;

    iget-object v3, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {v2, v3}, Lcom/android/launcher2/AddAdapter;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->mAdapter:Lcom/android/launcher2/AddAdapter;

    .line 1637
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1638
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const v3, 0x7f0a0009

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1639
    iget-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->mAdapter:Lcom/android/launcher2/AddAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1641
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1643
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1644
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1645
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1646
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1648
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$602(Lcom/android/launcher2/Launcher;Z)Z

    .line 1653
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$CreateShortcut;->cleanup()V

    .line 1654
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1671
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$CreateShortcut;->cleanup()V

    .line 1673
    packed-switch p2, :pswitch_data_0

    .line 1691
    :goto_0
    return-void

    .line 1676
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$700(Lcom/android/launcher2/Launcher;)V

    goto :goto_0

    .line 1681
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1682
    .local v0, pickIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1684
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1687
    iget-object v1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1673
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1657
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$602(Lcom/android/launcher2/Launcher;Z)Z

    .line 1695
    return-void
.end method
