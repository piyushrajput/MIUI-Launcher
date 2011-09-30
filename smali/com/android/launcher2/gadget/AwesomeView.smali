.class public Lcom/android/launcher2/gadget/AwesomeView;
.super Landroid/view/View;
.source "AwesomeView.java"


# instance fields
.field private mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

.field private mUpdateInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/gadget/AwesomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public static updateTimeOfVar(Ljava/util/Calendar;JLcom/miui/android/screenelement/Variables;)V
    .locals 4
    .parameter "calendar"
    .parameter "currentTime"
    .parameter "var"

    .prologue
    const/4 v3, 0x0

    .line 99
    const-string v0, "time"

    long-to-double v1, p1

    invoke-virtual {p3, v3, v0, v1, v2}, Lcom/miui/android/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 101
    const-string v0, "ampm"

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lcom/miui/android/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 102
    const-string v0, "hour12"

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lcom/miui/android/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 103
    const-string v0, "hour24"

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lcom/miui/android/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 104
    const-string v0, "minute"

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lcom/miui/android/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 105
    const-string v0, "second"

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lcom/miui/android/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 106
    const-string v0, "msec"

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lcom/miui/android/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 107
    const-string v0, "year"

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lcom/miui/android/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 108
    const-string v0, "month"

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lcom/miui/android/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 109
    const-string v0, "date"

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lcom/miui/android/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 111
    const-string v0, "day_of_week"

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p3, v3, v0, v1, v2}, Lcom/miui/android/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 112
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    invoke-virtual {v0}, Lcom/miui/android/screenelement/ScreenElement;->finish()V

    .line 90
    :cond_0
    return-void
.end method

.method public getUpdateInterval()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mUpdateInterval:I

    return v0
.end method

.method public load(Lcom/miui/android/screenelement/ScreenContext;)Z
    .locals 5
    .parameter "elementContext"

    .prologue
    .line 48
    :try_start_0
    iget-object v2, p1, Lcom/miui/android/screenelement/ScreenContext;->mResourceManager:Lcom/miui/android/screenelement/ResourceManager;

    invoke-virtual {v2}, Lcom/miui/android/screenelement/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 49
    .local v1, root:Lorg/w3c/dom/Element;
    const-string v2, "clock"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    new-instance v2, Lcom/miui/android/screenelement/ScreenElementLoadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad root tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/android/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/miui/android/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 62
    .end local v1           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 63
    .local v0, e:Lcom/miui/android/screenelement/ScreenElementLoadException;
    invoke-virtual {v0}, Lcom/miui/android/screenelement/ScreenElementLoadException;->printStackTrace()V

    .line 67
    .end local v0           #e:Lcom/miui/android/screenelement/ScreenElementLoadException;
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 53
    .restart local v1       #root:Lorg/w3c/dom/Element;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/miui/android/screenelement/ElementGroup;

    invoke-direct {v2, v1, p1}, Lcom/miui/android/screenelement/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/android/screenelement/ScreenContext;)V

    iput-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    .line 54
    iget-object v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    invoke-virtual {v2}, Lcom/miui/android/screenelement/ScreenElement;->init()V
    :try_end_1
    .catch Lcom/miui/android/screenelement/ScreenElementLoadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 56
    :try_start_2
    const-string v2, "update_interval"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mUpdateInterval:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/miui/android/screenelement/ScreenElementLoadException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 61
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 57
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 58
    .local v0, e:Ljava/lang/NumberFormatException;
    const v2, 0xea60

    :try_start_3
    iput v2, p0, Lcom/android/launcher2/gadget/AwesomeView;->mUpdateInterval:I
    :try_end_3
    .catch Lcom/miui/android/screenelement/ScreenElementLoadException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 64
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #root:Lorg/w3c/dom/Element;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 65
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 37
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    invoke-virtual {v0, p1}, Lcom/miui/android/screenelement/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 40
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    invoke-virtual {v0}, Lcom/miui/android/screenelement/ScreenElement;->pause()V

    .line 84
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    invoke-virtual {v0}, Lcom/miui/android/screenelement/ScreenElement;->resume()V

    .line 78
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/launcher2/gadget/AwesomeView;->mElementGroup:Lcom/miui/android/screenelement/ScreenElement;

    invoke-virtual {v0, p1, p2}, Lcom/miui/android/screenelement/ScreenElement;->tick(J)V

    .line 96
    :cond_0
    return-void
.end method
