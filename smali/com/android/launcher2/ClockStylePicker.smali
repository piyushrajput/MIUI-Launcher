.class public Lcom/android/launcher2/ClockStylePicker;
.super Lcom/miui/android/resourcebrowser/LocalResourceListActivity;
.source "ClockStylePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/android/resourcebrowser/LocalResourceListActivity;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/miui/android/resourcebrowser/ResourceAdapter;
    .locals 5

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/launcher2/ClockStylePicker;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    const-string v2, ".local"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;

    iget-object v1, p0, Lcom/android/launcher2/ClockStylePicker;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/launcher2/ClockStylePicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher2/ClockStylePicker$ClockStyleAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;I)V

    return-object v0
.end method
