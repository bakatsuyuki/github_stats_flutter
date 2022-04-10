final Map<String, dynamic>? responseMap = <String, dynamic>{
  "__typename": "Query",
  "user": {
    "__typename": "User",
    "name": "Katsuyuki Ouchi",
    "login": "bakatsuyuki",
    "contributionsCollection": {
      "__typename": "ContributionsCollection",
      "totalCommitContributions": 2005,
      "restrictedContributionsCount": 0
    },
    "repositoriesContributedTo": {
      "__typename": "RepositoryConnection",
      "totalCount": 5
    },
    "pullRequests": {"__typename": "PullRequestConnection", "totalCount": 180},
    "openIssues": {"__typename": "IssueConnection", "totalCount": 3},
    "closedIssues": {"__typename": "IssueConnection", "totalCount": 0},
    "followers": {"__typename": "FollowerConnection", "totalCount": 0},
    "repositories": {
      "__typename": "RepositoryConnection",
      "totalCount": 8,
      "nodes": [
        {
          "__typename": "Repository",
          "stargazers": {"__typename": "StargazerConnection", "totalCount": 0}
        },
        {
          "__typename": "Repository",
          "stargazers": {"__typename": "StargazerConnection", "totalCount": 0}
        },
        {
          "__typename": "Repository",
          "stargazers": {"__typename": "StargazerConnection", "totalCount": 0}
        },
        {
          "__typename": "Repository",
          "stargazers": {"__typename": "StargazerConnection", "totalCount": 0}
        },
        {
          "__typename": "Repository",
          "stargazers": {"__typename": "StargazerConnection", "totalCount": 0}
        },
        {
          "__typename": "Repository",
          "stargazers": {"__typename": "StargazerConnection", "totalCount": 0}
        },
        {
          "__typename": "Repository",
          "stargazers": {"__typename": "StargazerConnection", "totalCount": 0}
        },
        {
          "__typename": "Repository",
          "stargazers": {"__typename": "StargazerConnection", "totalCount": 0}
        }
      ]
    }
  }
};
