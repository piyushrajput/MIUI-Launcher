.class Lcom/android/launcher2/gadget/Player$MusicUtils;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicUtils"
.end annotation


# static fields
.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;

.field private static sUnknownArtistName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/launcher2/gadget/Player$MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 1089
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/launcher2/gadget/Player$MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/launcher2/gadget/Player$MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 1090
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/launcher2/gadget/Player$MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decorateLyricWithHtml(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, lrcArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "%s<br/>"

    .line 1122
    const-string v0, "%s<br/>"

    .line 1123
    .local v0, HTML_BR_PATTERN:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1124
    .local v3, size:I
    if-lez v3, :cond_0

    .line 1125
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1127
    .local v2, raw:Ljava/lang/CharSequence;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1128
    const-string v4, "%s<br/>"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1130
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1131
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #raw:Ljava/lang/CharSequence;
    check-cast v2, Ljava/lang/CharSequence;

    .line 1132
    .restart local v2       #raw:Ljava/lang/CharSequence;
    const-string v4, "%s<br/>"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1136
    .end local v1           #i:I
    .end local v2           #raw:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public static getLocaleArtistName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "src"

    .prologue
    .line 1110
    if-eqz p1, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1111
    :cond_0
    sget-object v0, Lcom/android/launcher2/gadget/Player$MusicUtils;->sUnknownArtistName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1112
    sget-object p1, Lcom/android/launcher2/gadget/Player$MusicUtils;->sUnknownArtistName:Ljava/lang/String;

    .line 1118
    :cond_1
    :goto_0
    return-object p1

    .line 1114
    :cond_2
    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/gadget/Player$MusicUtils;->sUnknownArtistName:Ljava/lang/String;

    .line 1115
    sget-object p1, Lcom/android/launcher2/gadget/Player$MusicUtils;->sUnknownArtistName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTrackInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "tr"
    .parameter "ar"

    .prologue
    .line 1139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1140
    const-string v0, "%s-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1147
    :goto_0
    return-object v0

    .line 1141
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    .line 1142
    goto :goto_0

    .line 1143
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p1

    .line 1144
    goto :goto_0

    .line 1147
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "secs"
    .parameter "resid"

    .prologue
    const-wide/16 v7, 0xe10

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 1095
    cmp-long v2, p1, v7

    if-gez v2, :cond_0

    move v2, p3

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, durationformat:Ljava/lang/String;
    sget-object v2, Lcom/android/launcher2/gadget/Player$MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1099
    sget-object v1, Lcom/android/launcher2/gadget/Player$MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 1100
    .local v1, timeArgs:[Ljava/lang/Object;
    div-long v2, p1, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1101
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1102
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1103
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1104
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1106
    sget-object v2, Lcom/android/launcher2/gadget/Player$MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1095
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v1           #timeArgs:[Ljava/lang/Object;
    :cond_0
    const v2, 0x7f0a005a

    goto :goto_0
.end method
