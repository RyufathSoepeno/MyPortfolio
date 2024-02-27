.class public Lu0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/b$c;
    }
.end annotation


# static fields
.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lu0/b$c;

.field private final b:Lr0/h;


# direct methods
.method public constructor <init>(Lu0/b$c;Lr0/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/b;->a:Lu0/b$c;

    iput-object p2, p0, Lu0/b;->b:Lr0/h;

    new-instance p1, Lu0/b$a;

    invoke-direct {p1, p0}, Lu0/b$a;-><init>(Lu0/b;)V

    invoke-virtual {p2, p1}, Lr0/h;->b(Lr0/h$b;)V

    return-void
.end method

.method static synthetic a(Lu0/b;Ljava/lang/String;)Landroid/view/PointerIcon;
    .registers 2

    invoke-direct {p0, p1}, Lu0/b;->d(Ljava/lang/String;)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lu0/b;)Lu0/b$c;
    .registers 1

    iget-object p0, p0, Lu0/b;->a:Lu0/b$c;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Landroid/view/PointerIcon;
    .registers 4

    sget-object v0, Lu0/b;->c:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Lu0/b$b;

    invoke-direct {v0, p0}, Lu0/b$b;-><init>(Lu0/b;)V

    sput-object v0, Lu0/b;->c:Ljava/util/HashMap;

    :cond_b
    sget-object v0, Lu0/b;->c:Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lu0/a;->a(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lu0/b;->a:Lu0/b$c;

    invoke-interface {v0, p1}, Lu0/b$c;->b(I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public c()V
    .registers 3

    iget-object v0, p0, Lu0/b;->b:Lr0/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/h;->b(Lr0/h$b;)V

    return-void
.end method
