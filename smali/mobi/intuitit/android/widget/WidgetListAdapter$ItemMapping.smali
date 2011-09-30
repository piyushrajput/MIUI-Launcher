.class Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;
.super Ljava/lang/Object;
.source "WidgetListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemMapping"
.end annotation


# instance fields
.field clickable:Z

.field defaultResource:I

.field index:I

.field layoutId:I

.field final synthetic this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

.field type:I


# direct methods
.method constructor <init>(Lmobi/intuitit/android/widget/WidgetListAdapter;III)V
    .locals 1
    .parameter
    .parameter "t"
    .parameter "l"
    .parameter "i"

    .prologue
    .line 98
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p2, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->type:I

    .line 100
    iput p3, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->layoutId:I

    .line 101
    iput p4, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->index:I

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->defaultResource:I

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->clickable:Z

    .line 104
    return-void
.end method

.method constructor <init>(Lmobi/intuitit/android/widget/WidgetListAdapter;IIIIZ)V
    .locals 0
    .parameter
    .parameter "t"
    .parameter "l"
    .parameter "i"
    .parameter "r"
    .parameter "u"

    .prologue
    .line 90
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->this$0:Lmobi/intuitit/android/widget/WidgetListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p2, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->type:I

    .line 92
    iput p3, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->layoutId:I

    .line 93
    iput p5, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->defaultResource:I

    .line 94
    iput p4, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->index:I

    .line 95
    iput-boolean p6, p0, Lmobi/intuitit/android/widget/WidgetListAdapter$ItemMapping;->clickable:Z

    .line 96
    return-void
.end method
