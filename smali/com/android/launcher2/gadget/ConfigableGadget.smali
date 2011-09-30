.class public abstract Lcom/android/launcher2/gadget/ConfigableGadget;
.super Landroid/widget/FrameLayout;
.source "ConfigableGadget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher2/gadget/Gadget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/gadget/ConfigableGadget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/gadget/ConfigableGadget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public deleteConfig()V
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/launcher2/gadget/ConfigableGadget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    return-void
.end method

.method protected abstract getEditView()Landroid/view/View;
.end method

.method public getItemId()J
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/gadget/GadgetInfo;

    iget-wide v1, p0, Lcom/android/launcher2/gadget/GadgetInfo;->id:J

    .line 111
    :goto_0
    return-wide v1

    .restart local p0
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method protected getPrefKey()Ljava/lang/String;
    .locals 5

    .prologue
    .line 81
    const-string v0, "%s_%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->getPrefPrefix()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->getItemId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPrefPrefix()Ljava/lang/String;
.end method

.method public loadConfig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/launcher2/gadget/ConfigableGadget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 74
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 38
    const-string v0, "com.android.launcher2.gadget.ConfigableGadget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove gadget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->getItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->deleteConfig()V

    .line 40
    return-void
.end method

.method public onEditDisable()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->getEditView()Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, editView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 58
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :cond_0
    return-void
.end method

.method public onEditNormal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->getEditView()Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, editView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->getEditView()Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, editView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 120
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 124
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public saveConfig(Ljava/lang/String;)Z
    .locals 5
    .parameter "config"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->getItemId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/launcher2/gadget/ConfigableGadget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/ConfigableGadget;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 91
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
