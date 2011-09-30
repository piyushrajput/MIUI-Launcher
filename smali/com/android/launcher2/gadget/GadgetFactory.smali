.class public Lcom/android/launcher2/gadget/GadgetFactory;
.super Ljava/lang/Object;
.source "GadgetFactory.java"


# static fields
.field public static final GADGET_ID_LIST:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/gadget/GadgetFactory;->GADGET_ID_LIST:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGadget(Landroid/app/Activity;Lcom/android/launcher2/gadget/GadgetInfo;I)Lcom/android/launcher2/gadget/Gadget;
    .locals 2
    .parameter "activity"
    .parameter "info"
    .parameter "requestCode"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, gadget:Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher2/gadget/GadgetInfo;->getGadgetId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 128
    :goto_0
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 132
    :cond_0
    check-cast v0, Lcom/android/launcher2/gadget/Gadget;

    .end local v0           #gadget:Landroid/view/View;
    return-object v0

    .line 108
    .restart local v0       #gadget:Landroid/view/View;
    :pswitch_0
    new-instance v0, Lcom/android/launcher2/gadget/FrequentContacts;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0}, Lcom/android/launcher2/gadget/FrequentContacts;-><init>(Landroid/content/Context;)V

    .line 109
    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 111
    :pswitch_1
    new-instance v0, Lcom/android/launcher2/gadget/Player;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0}, Lcom/android/launcher2/gadget/Player;-><init>(Landroid/content/Context;)V

    .line 112
    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 114
    :pswitch_2
    new-instance v0, Lcom/android/launcher2/gadget/GlobalSearch;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0}, Lcom/android/launcher2/gadget/GlobalSearch;-><init>(Landroid/content/Context;)V

    .line 115
    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 119
    :pswitch_3
    new-instance v0, Lcom/android/launcher2/gadget/ClockGadgetDelegate;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0, p2}, Lcom/android/launcher2/gadget/ClockGadgetDelegate;-><init>(Landroid/app/Activity;I)V

    .line 120
    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 124
    :pswitch_4
    new-instance v0, Lcom/android/launcher2/gadget/PhotoFrame;

    .end local v0           #gadget:Landroid/view/View;
    invoke-direct {v0, p0, p2}, Lcom/android/launcher2/gadget/PhotoFrame;-><init>(Landroid/app/Activity;I)V

    .restart local v0       #gadget:Landroid/view/View;
    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static final getGadgetIdList()[I
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/launcher2/gadget/GadgetFactory;->GADGET_ID_LIST:[I

    return-object v0
.end method

.method public static getGadgetItemId(Landroid/os/Bundle;)J
    .locals 5
    .parameter "bundle"

    .prologue
    const-wide/16 v3, -0x1

    .line 136
    const-string v2, "callback_id"

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 137
    .local v0, id:J
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 139
    :try_start_0
    const-string v2, "com.miui.android.resourcebrowser.TRACK_ID"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 144
    :cond_0
    :goto_0
    return-wide v0

    .line 140
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getInfo(I)Lcom/android/launcher2/gadget/GadgetInfo;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x4

    .line 40
    new-instance v0, Lcom/android/launcher2/gadget/GadgetInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher2/gadget/GadgetInfo;-><init>(I)V

    .line 41
    .local v0, result:Lcom/android/launcher2/gadget/GadgetInfo;
    packed-switch p0, :pswitch_data_0

    .line 97
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    .line 44
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    .line 45
    const v1, 0x7f0a002c

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    .line 46
    const v1, 0x7f020030

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 49
    :pswitch_1
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    .line 50
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    .line 51
    const v1, 0x7f0a0049

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    .line 52
    const v1, 0x7f020046

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 55
    :pswitch_2
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    .line 56
    iput v3, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    .line 57
    const v1, 0x7f0a004e

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    .line 58
    const v1, 0x7f02004c

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 61
    :pswitch_3
    iput v2, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    .line 62
    iput v3, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    .line 63
    const v1, 0x7f0a004f

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    .line 64
    const v1, 0x7f02002a

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 67
    :pswitch_4
    iput v2, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    .line 68
    iput v2, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    .line 69
    const v1, 0x7f0a0050

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    .line 70
    const v1, 0x7f02002b

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 73
    :pswitch_5
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    .line 74
    iput v2, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    .line 75
    const v1, 0x7f0a0051

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    .line 76
    const v1, 0x7f02002c

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 79
    :pswitch_6
    iput v2, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    .line 80
    iput v2, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    .line 81
    const v1, 0x7f0a0053

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    .line 82
    const v1, 0x7f020041

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 85
    :pswitch_7
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    .line 86
    iput v2, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    .line 87
    const v1, 0x7f0a0054

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    .line 88
    const v1, 0x7f020042

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mIconId:I

    goto :goto_0

    .line 91
    :pswitch_8
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanX:I

    .line 92
    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->spanY:I

    .line 93
    const v1, 0x7f0a0052

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mTitleId:I

    .line 94
    const v1, 0x7f020043

    iput v1, v0, Lcom/android/launcher2/gadget/GadgetInfo;->mIconId:I

    goto/16 :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
