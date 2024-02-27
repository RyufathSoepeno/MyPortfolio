.class public Lh/g;
.super Landroid/view/MenuInflater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/g$b;,
        Lh/g$a;
    }
.end annotation


# static fields
.field static final e:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final f:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:[Ljava/lang/Object;

.field final b:[Ljava/lang/Object;

.field c:Landroid/content/Context;

.field private d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Lh/g;->e:[Ljava/lang/Class;

    sput-object v0, Lh/g;->f:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lh/g;->c:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lh/g;->a:[Ljava/lang/Object;

    iput-object v0, p0, Lh/g;->b:[Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_13

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lh/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_13
    return-object p1
.end method

.method private c(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 16

    new-instance v0, Lh/g$b;

    invoke-direct {v0, p0, p3}, Lh/g$b;-><init>(Lh/g;Landroid/view/Menu;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p3

    :cond_9
    const/4 v1, 0x2

    const-string v2, "menu"

    const/4 v3, 0x1

    if-ne p3, v1, :cond_35

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    goto :goto_3b

    :cond_1e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expecting menu, got "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    if-ne p3, v3, :cond_9

    :goto_3b
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_40
    if-nez v6, :cond_c6

    if-eq p3, v3, :cond_be

    const-string v9, "item"

    const-string v10, "group"

    if-eq p3, v1, :cond_8e

    const/4 v11, 0x3

    if-eq p3, v11, :cond_4f

    goto/16 :goto_b9

    :cond_4f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    if-eqz v7, :cond_5e

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5e

    move-object v8, v4

    const/4 v7, 0x0

    goto :goto_b9

    :cond_5e
    invoke-virtual {p3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_68

    invoke-virtual {v0}, Lh/g$b;->h()V

    goto :goto_b9

    :cond_68
    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    invoke-virtual {v0}, Lh/g$b;->d()Z

    move-result p3

    if-nez p3, :cond_b9

    iget-object p3, v0, Lh/g$b;->A:Landroidx/core/view/b;

    if-eqz p3, :cond_82

    invoke-virtual {p3}, Landroidx/core/view/b;->a()Z

    move-result p3

    if-eqz p3, :cond_82

    invoke-virtual {v0}, Lh/g$b;->b()Landroid/view/SubMenu;

    goto :goto_b9

    :cond_82
    invoke-virtual {v0}, Lh/g$b;->a()V

    goto :goto_b9

    :cond_86
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b9

    const/4 v6, 0x1

    goto :goto_b9

    :cond_8e
    if-eqz v7, :cond_91

    goto :goto_b9

    :cond_91
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9f

    invoke-virtual {v0, p2}, Lh/g$b;->f(Landroid/util/AttributeSet;)V

    goto :goto_b9

    :cond_9f
    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-virtual {v0, p2}, Lh/g$b;->g(Landroid/util/AttributeSet;)V

    goto :goto_b9

    :cond_a9
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b7

    invoke-virtual {v0}, Lh/g$b;->b()Landroid/view/SubMenu;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lh/g;->c(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_b9

    :cond_b7
    move-object v8, p3

    const/4 v7, 0x1

    :cond_b9
    :goto_b9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    goto :goto_40

    :cond_be
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected end of document"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c6
    return-void
.end method


# virtual methods
.method b()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lh/g;->d:Ljava/lang/Object;

    if-nez v0, :cond_c

    iget-object v0, p0, Lh/g;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lh/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lh/g;->d:Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lh/g;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .registers 6

    const-string v0, "Error inflating menu XML"

    instance-of v1, p2, Ln/a;

    if-nez v1, :cond_a

    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    iget-object v2, p0, Lh/g;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    invoke-direct {p0, v1, p1, p2}, Lh/g;->c(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1c} :catch_2b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_24
    .catchall {:try_start_b .. :try_end_1c} :catchall_22

    if-eqz v1, :cond_21

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_21
    return-void

    :catchall_22
    move-exception p1

    goto :goto_32

    :catch_24
    move-exception p1

    :try_start_25
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2b
    move-exception p1

    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_22

    :goto_32
    if-eqz v1, :cond_37

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_37
    throw p1
.end method
