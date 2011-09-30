.class public Lcom/android/launcher2/ShortcutIcon;
.super Lcom/android/launcher2/ItemIcon;
.source "ShortcutIcon.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/ItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method

.method static fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Lcom/android/launcher2/ShortcutIcon;
    .locals 3
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "shortcutInfo"

    .prologue
    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutIcon;

    .line 26
    .local v0, sci:Lcom/android/launcher2/ShortcutIcon;
    invoke-virtual {v0, p1, p3}, Lcom/android/launcher2/ShortcutIcon;->updateInfo(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/ShortcutInfo;)V

    .line 27
    return-object v0
.end method


# virtual methods
.method public updateInfo(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/ShortcutInfo;)V
    .locals 1
    .parameter "launcher"
    .parameter "info"

    .prologue
    .line 15
    invoke-virtual {p0, p2}, Lcom/android/launcher2/ShortcutIcon;->setTag(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ShortcutIcon;->setIcon(Landroid/graphics/Bitmap;)V

    .line 17
    iget-object v0, p2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p2, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher2/Launcher;->bindAppMessage(Lcom/android/launcher2/ShortcutIcon;Landroid/content/ComponentName;)V

    .line 19
    return-void
.end method
