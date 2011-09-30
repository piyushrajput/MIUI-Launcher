.class Lcom/android/launcher2/ShortcutProviderInfo;
.super Lcom/android/launcher2/ItemInfo;
.source "ShortcutProviderInfo.java"


# instance fields
.field mComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pakcageName"
    .parameter "className"

    .prologue
    const/4 v1, 0x1

    .line 11
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 12
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/launcher2/ShortcutProviderInfo;->itemType:I

    .line 13
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher2/ShortcutProviderInfo;->mComponentName:Landroid/content/ComponentName;

    .line 14
    iput v1, p0, Lcom/android/launcher2/ShortcutProviderInfo;->spanX:I

    .line 15
    iput v1, p0, Lcom/android/launcher2/ShortcutProviderInfo;->spanY:I

    .line 16
    return-void
.end method
