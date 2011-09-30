.class Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;
.super Ljava/lang/Object;
.source "WidgetCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/intuitit/android/widget/WidgetCursorAdapter;
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

.field final synthetic this$0:Lmobi/intuitit/android/widget/WidgetCursorAdapter;

.field type:I


# direct methods
.method constructor <init>(Lmobi/intuitit/android/widget/WidgetCursorAdapter;III)V
    .locals 1
    .parameter
    .parameter "t"
    .parameter "l"
    .parameter "i"

    .prologue
    .line 76
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->this$0:Lmobi/intuitit/android/widget/WidgetCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p2, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->type:I

    .line 78
    iput p3, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->layoutId:I

    .line 79
    iput p4, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->index:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->defaultResource:I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->clickable:Z

    .line 82
    return-void
.end method

.method constructor <init>(Lmobi/intuitit/android/widget/WidgetCursorAdapter;IIIIZ)V
    .locals 0
    .parameter
    .parameter "t"
    .parameter "l"
    .parameter "i"
    .parameter "r"
    .parameter "u"

    .prologue
    .line 68
    iput-object p1, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->this$0:Lmobi/intuitit/android/widget/WidgetCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p2, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->type:I

    .line 70
    iput p3, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->layoutId:I

    .line 71
    iput p5, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->defaultResource:I

    .line 72
    iput p4, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->index:I

    .line 73
    iput-boolean p6, p0, Lmobi/intuitit/android/widget/WidgetCursorAdapter$ItemMapping;->clickable:Z

    .line 74
    return-void
.end method
