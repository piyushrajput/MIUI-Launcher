.class public Lcom/android/launcher2/gadget/FlipClock;
.super Landroid/widget/FrameLayout;
.source "FlipClock.java"

# interfaces
.implements Lcom/android/launcher2/gadget/Clock$ClockStyle;
.implements Lcom/android/launcher2/gadget/Gadget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/FlipClock$1;,
        Lcom/android/launcher2/gadget/FlipClock$PageCache;,
        Lcom/android/launcher2/gadget/FlipClock$ViewList;
    }
.end annotation


# instance fields
.field private mBottomBar:Lcom/android/launcher2/gadget/AwesomeView;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mElementContext:Lcom/miui/android/screenelement/ScreenContext;

.field private mLastHour:I

.field private mLastMin:I

.field mPageCache:Lcom/android/launcher2/gadget/FlipClock$PageCache;

.field private mViewList:Lcom/android/launcher2/gadget/FlipClock$ViewList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mLastHour:I

    .line 42
    iput v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mLastMin:I

    .line 56
    new-instance v0, Lcom/android/launcher2/gadget/FlipClock$ViewList;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/gadget/FlipClock$ViewList;-><init>(Lcom/android/launcher2/gadget/FlipClock;Lcom/android/launcher2/gadget/FlipClock$1;)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mViewList:Lcom/android/launcher2/gadget/FlipClock$ViewList;

    .line 122
    new-instance v0, Lcom/android/launcher2/gadget/FlipClock$PageCache;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/gadget/FlipClock$PageCache;-><init>(Lcom/android/launcher2/gadget/FlipClock;Lcom/android/launcher2/gadget/FlipClock$1;)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mPageCache:Lcom/android/launcher2/gadget/FlipClock$PageCache;

    .line 60
    return-void
.end method

.method private genCurrentViewList(IIII)V
    .locals 10
    .parameter "h"
    .parameter "m"
    .parameter "startHour"
    .parameter "startMin"

    .prologue
    .line 135
    move v4, p3

    .line 136
    .local v4, lh:I
    move v5, p4

    .line 137
    .local v5, lm:I
    const/16 v6, 0x18

    invoke-static {p1, p3, v6}, Lcom/android/launcher2/gadget/FlipClock;->modSub(III)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 138
    const/4 v6, 0x1

    const/16 v7, 0x18

    invoke-static {p1, v6, v7}, Lcom/android/launcher2/gadget/FlipClock;->modSub(III)I

    move-result v4

    .line 141
    :cond_0
    const/16 v6, 0x3c

    invoke-static {p2, p4, v6}, Lcom/android/launcher2/gadget/FlipClock;->modSub(III)I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_1

    .line 142
    const/4 v6, 0x2

    const/16 v7, 0x3c

    invoke-static {p2, v6, v7}, Lcom/android/launcher2/gadget/FlipClock;->modSub(III)I

    move-result v5

    .line 145
    :cond_1
    if-eq v4, p3, :cond_2

    const/4 v6, 0x1

    move v1, v6

    .line 146
    .local v1, delta:I
    :goto_0
    const/16 v6, 0x18

    invoke-static {p1, v4, v6}, Lcom/android/launcher2/gadget/FlipClock;->modSub(III)I

    move-result v0

    .line 147
    .local v0, count:I
    add-int v2, v0, v1

    .line 148
    .local v2, dist:I
    const/4 v3, 0x0

    .line 149
    .local v3, i:I
    move v3, v0

    :goto_1
    if-ltz v3, :cond_3

    .line 150
    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mViewList:Lcom/android/launcher2/gadget/FlipClock$ViewList;

    const/4 v7, 0x0

    const/16 v8, 0x18

    invoke-static {v4, v3, v8}, Lcom/android/launcher2/gadget/FlipClock;->modAdd(III)I

    move-result v8

    add-int v9, v3, v1

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/launcher2/gadget/FlipClock;->getPagePart(IIII)Lcom/android/launcher2/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 145
    .end local v0           #count:I
    .end local v1           #delta:I
    .end local v2           #dist:I
    .end local v3           #i:I
    :cond_2
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0

    .line 153
    .restart local v0       #count:I
    .restart local v1       #delta:I
    .restart local v2       #dist:I
    .restart local v3       #i:I
    :cond_3
    if-eqz v1, :cond_4

    .line 154
    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mViewList:Lcom/android/launcher2/gadget/FlipClock$ViewList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v7, p3, v2, v8}, Lcom/android/launcher2/gadget/FlipClock;->getPagePart(IIII)Lcom/android/launcher2/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mViewList:Lcom/android/launcher2/gadget/FlipClock$ViewList;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v7, p3, v2, v8}, Lcom/android/launcher2/gadget/FlipClock;->getPagePart(IIII)Lcom/android/launcher2/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-gt v3, v0, :cond_5

    .line 159
    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mViewList:Lcom/android/launcher2/gadget/FlipClock$ViewList;

    const/4 v7, 0x1

    const/16 v8, 0x18

    invoke-static {v4, v3, v8}, Lcom/android/launcher2/gadget/FlipClock;->modAdd(III)I

    move-result v8

    add-int v9, v3, v1

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/launcher2/gadget/FlipClock;->getPagePart(IIII)Lcom/android/launcher2/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 162
    :cond_5
    if-eq v5, p4, :cond_6

    const/4 v6, 0x1

    move v1, v6

    .line 163
    :goto_3
    const/16 v6, 0x3c

    invoke-static {p2, v5, v6}, Lcom/android/launcher2/gadget/FlipClock;->modSub(III)I

    move-result v0

    .line 164
    add-int v2, v1, v0

    .line 165
    move v3, v0

    :goto_4
    if-ltz v3, :cond_7

    .line 166
    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mViewList:Lcom/android/launcher2/gadget/FlipClock$ViewList;

    const/4 v7, 0x2

    const/16 v8, 0x3c

    invoke-static {v5, v3, v8}, Lcom/android/launcher2/gadget/FlipClock;->modAdd(III)I

    move-result v8

    add-int v9, v3, v1

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/launcher2/gadget/FlipClock;->getPagePart(IIII)Lcom/android/launcher2/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 162
    :cond_6
    const/4 v6, 0x0

    move v1, v6

    goto :goto_3

    .line 169
    :cond_7
    if-eqz v1, :cond_8

    .line 170
    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mViewList:Lcom/android/launcher2/gadget/FlipClock$ViewList;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {p0, v7, p4, v2, v8}, Lcom/android/launcher2/gadget/FlipClock;->getPagePart(IIII)Lcom/android/launcher2/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mViewList:Lcom/android/launcher2/gadget/FlipClock$ViewList;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {p0, v7, p4, v2, v8}, Lcom/android/launcher2/gadget/FlipClock;->getPagePart(IIII)Lcom/android/launcher2/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_8
    const/4 v3, 0x0

    :goto_5
    if-gt v3, v0, :cond_9

    .line 175
    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mViewList:Lcom/android/launcher2/gadget/FlipClock$ViewList;

    const/4 v7, 0x3

    const/16 v8, 0x3c

    invoke-static {v5, v3, v8}, Lcom/android/launcher2/gadget/FlipClock;->modAdd(III)I

    move-result v8

    add-int v9, v3, v1

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/android/launcher2/gadget/FlipClock;->getPagePart(IIII)Lcom/android/launcher2/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 177
    :cond_9
    return-void
.end method

.method private getPagePart(IIII)Lcom/android/launcher2/gadget/FlipPage;
    .locals 8
    .parameter "pageType"
    .parameter "number"
    .parameter "dist"
    .parameter "offset"

    .prologue
    .line 180
    const/4 v7, -0x1

    .line 181
    .local v7, resID:I
    const/4 v6, 0x0

    .line 182
    .local v6, flipDelay:I
    const/4 v0, 0x0

    .line 183
    .local v0, page:Lcom/android/launcher2/gadget/FlipPage;
    packed-switch p1, :pswitch_data_0

    .line 201
    :goto_0
    const/4 v1, -0x1

    if-eq v7, v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/launcher2/gadget/FlipClock;->mPageCache:Lcom/android/launcher2/gadget/FlipClock$PageCache;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/gadget/FlipClock$PageCache;->get(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #page:Lcom/android/launcher2/gadget/FlipPage;
    check-cast v0, Lcom/android/launcher2/gadget/FlipPage;

    .line 203
    .restart local v0       #page:Lcom/android/launcher2/gadget/FlipPage;
    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/FlipClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v7, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #page:Lcom/android/launcher2/gadget/FlipPage;
    check-cast v0, Lcom/android/launcher2/gadget/FlipPage;

    .line 205
    .restart local v0       #page:Lcom/android/launcher2/gadget/FlipPage;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/gadget/FlipPage;->setTag(Ljava/lang/Object;)V

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/gadget/FlipClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    iget-object v1, v1, Lcom/miui/android/screenelement/ScreenContext;->mResourceManager:Lcom/miui/android/screenelement/ResourceManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/gadget/FlipPage;->init(Lcom/miui/android/screenelement/ResourceManager;IIIII)V

    .line 210
    :cond_1
    return-object v0

    .line 185
    :pswitch_0
    const v7, 0x7f030011

    .line 186
    const/16 v6, 0x96

    .line 187
    goto :goto_0

    .line 189
    :pswitch_1
    const/16 v6, 0x96

    .line 190
    const v7, 0x7f030010

    .line 191
    goto :goto_0

    .line 193
    :pswitch_2
    const/16 v6, 0x64

    .line 194
    const v7, 0x7f030013

    .line 195
    goto :goto_0

    .line 197
    :pswitch_3
    const/16 v6, 0x64

    .line 198
    const v7, 0x7f030012

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static modAdd(III)I
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "mod"

    .prologue
    .line 49
    add-int v0, p0, p1

    rem-int/2addr v0, p2

    return v0
.end method

.method public static modSub(III)I
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "mod"

    .prologue
    .line 53
    sub-int v0, p0, p1

    if-gez v0, :cond_0

    sub-int v0, p0, p1

    add-int/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    sub-int v0, p0, p1

    goto :goto_0
.end method

.method private resetContainer()V
    .locals 4

    .prologue
    .line 125
    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipClock;->mViewList:Lcom/android/launcher2/gadget/FlipClock$ViewList;

    invoke-virtual {v2}, Lcom/android/launcher2/gadget/FlipClock$ViewList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 126
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 129
    .end local v1           #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 130
    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipClock;->mPageCache:Lcom/android/launcher2/gadget/FlipClock$PageCache;

    iget-object v3, p0, Lcom/android/launcher2/gadget/FlipClock;->mViewList:Lcom/android/launcher2/gadget/FlipClock$ViewList;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/gadget/FlipClock$PageCache;->put(Lcom/android/launcher2/gadget/FlipClock$ViewList;)V

    .line 131
    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipClock;->mViewList:Lcom/android/launcher2/gadget/FlipClock$ViewList;

    invoke-virtual {v2}, Lcom/android/launcher2/gadget/FlipClock$ViewList;->clear()V

    .line 132
    return-void
.end method


# virtual methods
.method public getUpdateInterval()I
    .locals 3

    .prologue
    const v2, 0xea60

    .line 78
    iget-object v1, p0, Lcom/android/launcher2/gadget/FlipClock;->mBottomBar:Lcom/android/launcher2/gadget/AwesomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/gadget/AwesomeView;->getUpdateInterval()I

    move-result v0

    .line 79
    .local v0, awesomeInterval:I
    if-lez v0, :cond_0

    if-ge v0, v2, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/launcher2/gadget/FlipClock;->mBottomBar:Lcom/android/launcher2/gadget/AwesomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/gadget/AwesomeView;->getUpdateInterval()I

    move-result v1

    .line 83
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public initConfig(Ljava/lang/String;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 72
    new-instance v0, Lcom/miui/android/screenelement/ScreenContext;

    iget-object v1, p0, Lcom/android/launcher2/gadget/FlipClock;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/android/screenelement/ResourceManager;

    new-instance v3, Lcom/android/launcher2/gadget/Utils$GadgetClockBitmapLoader;

    invoke-direct {v3, p1}, Lcom/android/launcher2/gadget/Utils$GadgetClockBitmapLoader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/miui/android/screenelement/ResourceManager;-><init>(Lcom/miui/android/screenelement/ResourceManager$ResourceLoader;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/android/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/android/screenelement/ResourceManager;)V

    iput-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    .line 74
    return-void
.end method

.method public is24HourFormat()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 256
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/FlipClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    .line 257
    iget-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/launcher2/gadget/FlipClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    iget-object v1, v1, Lcom/miui/android/screenelement/ScreenContext;->mResourceManager:Lcom/miui/android/screenelement/ResourceManager;

    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "flip_bg.9.png"

    invoke-virtual {v1, v2, v3}, Lcom/miui/android/screenelement/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/FlipClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/gadget/AwesomeView;

    iput-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mBottomBar:Lcom/android/launcher2/gadget/AwesomeView;

    .line 261
    iget-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mBottomBar:Lcom/android/launcher2/gadget/AwesomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/gadget/AwesomeView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mBottomBar:Lcom/android/launcher2/gadget/AwesomeView;

    iget-object v1, p0, Lcom/android/launcher2/gadget/FlipClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/gadget/AwesomeView;->load(Lcom/miui/android/screenelement/ScreenContext;)Z

    .line 263
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mBottomBar:Lcom/android/launcher2/gadget/AwesomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/AwesomeView;->finish()V

    .line 245
    iget-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    iget-object v0, v0, Lcom/miui/android/screenelement/ScreenContext;->mResourceManager:Lcom/miui/android/screenelement/ResourceManager;

    invoke-virtual {v0}, Lcom/miui/android/screenelement/ResourceManager;->clear()V

    .line 248
    :cond_0
    return-void
.end method

.method public onEditDisable()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public onEditNormal()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 64
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 65
    iget-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mBottomBar:Lcom/android/launcher2/gadget/AwesomeView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mBottomBar:Lcom/android/launcher2/gadget/AwesomeView;

    iget-object v1, p0, Lcom/android/launcher2/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/FlipClock;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/gadget/FlipClock;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/gadget/AwesomeView;->layout(IIII)V

    .line 68
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mBottomBar:Lcom/android/launcher2/gadget/AwesomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/AwesomeView;->pause()V

    .line 240
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/launcher2/gadget/FlipClock;->mBottomBar:Lcom/android/launcher2/gadget/AwesomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/gadget/AwesomeView;->resume()V

    .line 235
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public updateAppearance(Ljava/util/Calendar;)V
    .locals 8
    .parameter "calendar"

    .prologue
    const/4 v7, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/FlipClock;->is24HourFormat()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0xb

    :goto_0
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 94
    .local v2, h:I
    const/16 v6, 0xc

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 95
    .local v4, m:I
    iget v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mLastHour:I

    if-ne v2, v6, :cond_0

    iget v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mLastMin:I

    if-eq v4, v6, :cond_4

    .line 96
    :cond_0
    iget v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mLastHour:I

    if-gez v6, :cond_1

    .line 97
    iput v7, p0, Lcom/android/launcher2/gadget/FlipClock;->mLastHour:I

    .line 99
    :cond_1
    iget v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mLastMin:I

    if-gez v6, :cond_2

    .line 100
    iput v7, p0, Lcom/android/launcher2/gadget/FlipClock;->mLastMin:I

    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FlipClock;->resetContainer()V

    .line 104
    iget v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mLastHour:I

    iget v7, p0, Lcom/android/launcher2/gadget/FlipClock;->mLastMin:I

    invoke-direct {p0, v2, v4, v6, v7}, Lcom/android/launcher2/gadget/FlipClock;->genCurrentViewList(IIII)V

    .line 105
    iput v2, p0, Lcom/android/launcher2/gadget/FlipClock;->mLastHour:I

    .line 106
    iput v4, p0, Lcom/android/launcher2/gadget/FlipClock;->mLastMin:I

    .line 108
    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mViewList:Lcom/android/launcher2/gadget/FlipClock$ViewList;

    invoke-virtual {v6}, Lcom/android/launcher2/gadget/FlipClock$ViewList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 109
    .local v5, v:Landroid/view/View;
    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 93
    .end local v2           #h:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #m:I
    .end local v5           #v:Landroid/view/View;
    :cond_3
    const/16 v6, 0xa

    goto :goto_0

    .line 113
    .restart local v2       #h:I
    .restart local v4       #m:I
    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mBottomBar:Lcom/android/launcher2/gadget/AwesomeView;

    if-eqz v6, :cond_5

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 115
    .local v0, currentTime:J
    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mBottomBar:Lcom/android/launcher2/gadget/AwesomeView;

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher2/gadget/AwesomeView;->tick(J)V

    .line 117
    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mElementContext:Lcom/miui/android/screenelement/ScreenContext;

    iget-object v6, v6, Lcom/miui/android/screenelement/ScreenContext;->mVariables:Lcom/miui/android/screenelement/Variables;

    invoke-static {p1, v0, v1, v6}, Lcom/android/launcher2/gadget/AwesomeView;->updateTimeOfVar(Ljava/util/Calendar;JLcom/miui/android/screenelement/Variables;)V

    .line 118
    iget-object v6, p0, Lcom/android/launcher2/gadget/FlipClock;->mBottomBar:Lcom/android/launcher2/gadget/AwesomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/gadget/AwesomeView;->invalidate()V

    .line 120
    .end local v0           #currentTime:J
    :cond_5
    return-void
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 252
    return-void
.end method
