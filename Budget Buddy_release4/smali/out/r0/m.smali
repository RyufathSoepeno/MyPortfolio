.class public Lr0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field private b:[B

.field private c:Ls0/j;

.field private d:Ls0/j$d;

.field private e:Z

.field private f:Z

.field private final g:Ls0/j$c;


# direct methods
.method public constructor <init>(Lf0/a;Z)V
    .registers 6

    new-instance v0, Ls0/j;

    sget-object v1, Ls0/q;->b:Ls0/q;

    const-string v2, "flutter/restoration"

    invoke-direct {v0, p1, v2, v1}, Ls0/j;-><init>(Ls0/c;Ljava/lang/String;Ls0/k;)V

    invoke-direct {p0, v0, p2}, Lr0/m;-><init>(Ls0/j;Z)V

    return-void
.end method

.method constructor <init>(Ls0/j;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr0/m;->e:Z

    iput-boolean v0, p0, Lr0/m;->f:Z

    new-instance v0, Lr0/m$b;

    invoke-direct {v0, p0}, Lr0/m$b;-><init>(Lr0/m;)V

    iput-object v0, p0, Lr0/m;->g:Ls0/j$c;

    iput-object p1, p0, Lr0/m;->c:Ls0/j;

    iput-boolean p2, p0, Lr0/m;->a:Z

    invoke-virtual {p1, v0}, Ls0/j;->e(Ls0/j$c;)V

    return-void
.end method

.method static synthetic a(Lr0/m;)[B
    .registers 1

    iget-object p0, p0, Lr0/m;->b:[B

    return-object p0
.end method

.method static synthetic b(Lr0/m;[B)[B
    .registers 2

    iput-object p1, p0, Lr0/m;->b:[B

    return-object p1
.end method

.method static synthetic c(Lr0/m;Z)Z
    .registers 2

    iput-boolean p1, p0, Lr0/m;->f:Z

    return p1
.end method

.method static synthetic d(Lr0/m;)Z
    .registers 1

    iget-boolean p0, p0, Lr0/m;->e:Z

    return p0
.end method

.method static synthetic e(Lr0/m;[B)Ljava/util/Map;
    .registers 2

    invoke-direct {p0, p1}, Lr0/m;->i([B)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lr0/m;Ls0/j$d;)Ls0/j$d;
    .registers 2

    iput-object p1, p0, Lr0/m;->d:Ls0/j$d;

    return-object p1
.end method

.method private i([B)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "enabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public g()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lr0/m;->b:[B

    return-void
.end method

.method public h()[B
    .registers 2

    iget-object v0, p0, Lr0/m;->b:[B

    return-object v0
.end method

.method public j([B)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr0/m;->e:Z

    iget-object v0, p0, Lr0/m;->d:Ls0/j$d;

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lr0/m;->i([B)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ls0/j$d;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lr0/m;->d:Ls0/j$d;

    :cond_11
    iput-object p1, p0, Lr0/m;->b:[B

    goto :goto_28

    :cond_14
    iget-boolean v0, p0, Lr0/m;->f:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lr0/m;->c:Ls0/j;

    invoke-direct {p0, p1}, Lr0/m;->i([B)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lr0/m$a;

    invoke-direct {v2, p0, p1}, Lr0/m$a;-><init>(Lr0/m;[B)V

    const-string p1, "push"

    invoke-virtual {v0, p1, v1, v2}, Ls0/j;->d(Ljava/lang/String;Ljava/lang/Object;Ls0/j$d;)V

    :goto_28
    return-void
.end method
