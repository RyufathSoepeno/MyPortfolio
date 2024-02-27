.class public Lr0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/l$f;,
        Lr0/l$b;,
        Lr0/l$c;,
        Lr0/l$e;,
        Lr0/l$d;,
        Lr0/l$g;
    }
.end annotation


# instance fields
.field private final a:Ls0/j;

.field private b:Lr0/l$g;

.field private final c:Ls0/j$c;


# direct methods
.method public constructor <init>(Lf0/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr0/l$a;

    invoke-direct {v0, p0}, Lr0/l$a;-><init>(Lr0/l;)V

    iput-object v0, p0, Lr0/l;->c:Ls0/j$c;

    new-instance v1, Ls0/j;

    sget-object v2, Ls0/q;->b:Ls0/q;

    const-string v3, "flutter/platform_views"

    invoke-direct {v1, p1, v3, v2}, Ls0/j;-><init>(Ls0/c;Ljava/lang/String;Ls0/k;)V

    iput-object v1, p0, Lr0/l;->a:Ls0/j;

    invoke-virtual {v1, v0}, Ls0/j;->e(Ls0/j$c;)V

    return-void
.end method

.method static synthetic a(Lr0/l;)Lr0/l$g;
    .registers 1

    iget-object p0, p0, Lr0/l;->b:Lr0/l$g;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lr0/l;->c(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Le0/b;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d(I)V
    .registers 4

    iget-object v0, p0, Lr0/l;->a:Ls0/j;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "viewFocused"

    invoke-virtual {v0, v1, p1}, Ls0/j;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lr0/l$g;)V
    .registers 2

    iput-object p1, p0, Lr0/l;->b:Lr0/l$g;

    return-void
.end method
